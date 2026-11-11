.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt edi, edx
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 7
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], 71
and rdi, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rdi]
setbe dl
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
movsx dx, bl
lea rdi, qword ptr [rdx]
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 13
adc dl, al
and rcx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rcx]
lea ax, qword ptr [rdi + rdx + 47]
adc dl, dil
and di, 16
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rdi]
add cx, 72
setnz dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
