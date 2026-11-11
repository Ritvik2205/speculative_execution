.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setnb cl
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], rax
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
bt edi, 69
and rsi, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock bts dword ptr [r14 + rsi], ebx
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], dx
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], si
and rbx, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rbx]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
mov rax, 50
add bl, cl
add cl, 105 # instrumentation
and rdi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdi], 7
and rax, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], 13
mov rax, 41
lea ebx, qword ptr [rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
