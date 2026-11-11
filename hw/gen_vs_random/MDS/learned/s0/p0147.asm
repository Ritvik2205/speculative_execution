.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 91 # instrumentation
cmovnle edi, edi
and bl, dl
test dl, al
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], edx
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rbx
or al, 24
jmp .bb_0.2
.bb_0.2:
xor al, -4
or rdx, -48
jmp .bb_0.3
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
and rcx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rcx]
and rbx, 65
test dil, -80
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], al
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
test bx, 4954
or dil, 12
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
