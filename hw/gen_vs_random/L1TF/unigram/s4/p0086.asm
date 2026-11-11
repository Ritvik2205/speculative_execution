.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 104 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], dx
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
sub ecx, ecx
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], rdx
and rdi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rdi
and rax, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rax], 1
jmp .bb_0.1
.bb_0.1:
sbb dl, dil
lea rcx, qword ptr [rdx + rcx + 23]
and rbx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr edi, dword ptr [r14 + rax]
sbb rax, 1131444263
lea rbx, qword ptr [rax + rsi]
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
