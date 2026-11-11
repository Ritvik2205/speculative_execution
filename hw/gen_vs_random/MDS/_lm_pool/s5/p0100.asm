.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, dil
or al, dl
and rdi, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
xor dl, al
or bl, -62
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
bt si, cx
or al, 74
and bl, 68
or sil, -49
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
test rsi, 5
and rsi, 71
xor sil, dil
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
