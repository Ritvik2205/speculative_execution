.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], edx
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 7
and rdi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdi]
add al, al
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], 59
and rdx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdx]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], bl
and rcx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdi]
cmp sil, 25
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], bl
and rsi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rsi]
sbb bl, dl
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
