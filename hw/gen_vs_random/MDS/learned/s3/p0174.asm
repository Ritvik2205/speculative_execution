.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rdi], dx
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
bts rdi, 130
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
xor cl, al
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
bt dx, 162
jmp .bb_0.1
.bb_0.1:
and cl, sil
not dl
or dl, dil
or al, cl
and rdx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
