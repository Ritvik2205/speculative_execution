.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rcx]
imul rdi, rbx, 97
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rbx
sub rdx, 53
and cl, bl
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rax
jmp .bb_0.1
.bb_0.1:
mul rax
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], -73
test ecx, ebx
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], ecx
and rax, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
dec dx
and rsi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rsi], 56
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
