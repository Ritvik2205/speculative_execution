.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, 89
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], edi
cmp dx, 48
setnl bl
btr rbx, rsi
jmp .bb_0.1
.bb_0.1:
test rbx, rcx
sub edi, 27
adc al, bl
test rax, -1576813424
and rax, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
setp byte ptr [r14 + rbx]
or eax, esi
and rax, 0b1111111111111 # instrumentation
cmp si, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rbx
lea ax, qword ptr [rdi]
and rcx, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
