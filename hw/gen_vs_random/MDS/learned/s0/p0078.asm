.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, al
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], eax
and ax, 19224
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
not cl
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rbx
not cl
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], dil
xor bl, dl
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
jmp .bb_0.2
.bb_0.2:
and ax, 31082
and rbx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rbx]
or bl, dl
test sil, al
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dl
and rbx, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rbx]
not bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
