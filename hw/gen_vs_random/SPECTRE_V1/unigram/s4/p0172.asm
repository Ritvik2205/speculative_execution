.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], bl
test cl, -62
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], rax
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 38
and rbx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rbx], 87
add cl, 32 # instrumentation
cmovnbe rdx, rbx
cmovle edi, esi
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
not rbx
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], ax
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], 60
xor sil, -33
add dl, 28 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], 22
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
