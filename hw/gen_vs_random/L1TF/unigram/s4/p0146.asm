.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
setnz byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rbx]
imul si, ax, 28
sub rax, 57846954
and rdx, 0b1111111111111 # instrumentation
movsx rax, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], 65
and rcx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btr qword ptr [r14 + rcx], rdx
lea edi, qword ptr [rcx + rcx + 46]
and rsi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rsi]
sbb al, -23
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 55
and rcx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rax]
cmp dil, dil
imul cx, bx, 78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
