.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
btc cx, 115
or al, sil
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], -83
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rbx
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
and rdi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdx]
or dil, -78
xor bl, -27
test al, 22
or sil, -78
xor dl, cl
or bl, cl
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 61
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
