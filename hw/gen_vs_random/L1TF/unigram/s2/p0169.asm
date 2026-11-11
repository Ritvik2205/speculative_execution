.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setb cl
cbw
cmovb di, si
sub dx, 34
and rbx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
or sil, -44
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 22
cmp edx, eax
cwd
lea rsi, qword ptr [rbx + rsi + 16]
btr rdi, rdx
movzx esi, dl
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
lea dx, qword ptr [rcx]
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
