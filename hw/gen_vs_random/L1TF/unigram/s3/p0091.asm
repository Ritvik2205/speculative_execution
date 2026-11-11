.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, cl
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], -5
and rcx, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rcx], rsi
dec dx
cmp bl, dl
inc bl
and rdx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 105
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], cl
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], rsi
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], 27
and dx, 9
cmovs rax, rbx
imul si, di, 56
lea di, qword ptr [rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
