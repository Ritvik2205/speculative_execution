.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rcx]
xor cl, dl
test eax, 1730342416
or dl, dl
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], dil
and rcx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rdi]
cmovnz ebx, eax
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rbx]
lea ax, qword ptr [rcx]
and rax, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], 73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
