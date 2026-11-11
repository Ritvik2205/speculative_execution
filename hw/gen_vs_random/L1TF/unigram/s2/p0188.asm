.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rbx]
sub rdi, 1
add al, -117 # instrumentation
setp sil
and rax, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], rbx
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], 53
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
add dl, -63 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], dl
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], eax
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dl
btr cx, 83
and rbx, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], dx
lea rcx, qword ptr [rbx + rsi]
and dl, 59
cmovz rsi, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
