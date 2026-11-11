.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea di, qword ptr [rcx + rdi + 62995]
imul di, ax
add bl, 62 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rcx]
lea edi, qword ptr [rdi + rbx]
and rcx, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rcx]
or al, bl
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], 27
and rax, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rax]
or dl, -67
or ax, 11821
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 64
and al, -68
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], 70
lea rax, qword ptr [rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
