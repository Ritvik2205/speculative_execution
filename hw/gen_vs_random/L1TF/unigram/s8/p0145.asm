.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rcx]
test al, -84
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], 83
imul rbx, rsi
setnbe bl
and rdx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdx]
setnl dil
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock bts dword ptr [r14 + rbx], eax
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], sil
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 124
cmovb di, bx
and rax, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rax]
lea rax, qword ptr [rcx + rsi]
and rdi, 0b1111111111111 # instrumentation
cmp rdi, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
