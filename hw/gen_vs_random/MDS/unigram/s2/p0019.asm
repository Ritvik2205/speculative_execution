.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 1
not rsi
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr edi, edx
cmovnz rbx, rcx
and rdx, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdx]
test cl, cl
xor bl, -102
btc di, 233
and rdi, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rdi], ecx
and rcx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rcx], si
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 52
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -50
and rbx, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btr word ptr [r14 + rax], bx
or sil, cl
or cl, al
cmovbe eax, ebx
cmovnz di, dx
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
