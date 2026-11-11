.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rax]
lea edi, qword ptr [rax + rdx + 24]
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], rax
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr edi, edi
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rbx]
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rcx
add al, 56
add dil, 88
mul edi
cmp rax, 16650668
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rax
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], cl
and rdi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdi]
xor si, -50
bt rcx, 38
mov esi, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
