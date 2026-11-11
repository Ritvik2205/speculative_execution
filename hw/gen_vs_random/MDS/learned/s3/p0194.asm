.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts esi, 82
and rsi, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rsi]
btc cx, 115
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rbx
xor al, dil
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 17451
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
or dl, -21
xor dl, 40
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], cl
or cl, dl
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
