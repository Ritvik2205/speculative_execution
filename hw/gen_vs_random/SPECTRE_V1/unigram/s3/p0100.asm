.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], dil
and bl, bl
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 41
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], sil
lea eax, qword ptr [rdi]
and rsi, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rsi]
add sil, -68
test cx, -17886
and rdi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rdi]
loope .bb_0.1
jmp .exit_0
.bb_0.1:
lea rcx, qword ptr [rax + rsi + 40]
and rsi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rsi]
lea esi, qword ptr [rcx]
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 34
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rcx]
and dil, 98
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
