.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add si, -5
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], 56
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr edx, dword ptr [r14 + rdx]
lea edi, qword ptr [rcx + rdx + 14]
dec esi
and rsi, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rsi]
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rsi, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rsi]
sub rax, 57846954
and rcx, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rcx]
xchg eax, edi
lea rdi, qword ptr [rcx]
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], ebx
cmovo esi, eax
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
