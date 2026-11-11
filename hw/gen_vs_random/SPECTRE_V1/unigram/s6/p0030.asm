.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], sil
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 24
add al, sil
setnle al
lea edx, qword ptr [rdx + rax]
and rdi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btr word ptr [r14 + rdi], di
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], 72
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rbx
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf ecx, dword ptr [r14 + rdi]
js .bb_0.1
jmp .exit_0
.bb_0.1:
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
and rdx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rax]
sub dl, 96
mov rbx, rcx
btr rax, 31
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
