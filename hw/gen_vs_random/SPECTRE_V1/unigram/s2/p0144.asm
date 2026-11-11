.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub cx, 84
and rax, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rax]
movsx esi, cl
bswap rsi
and rdx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
movsx rbx, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], -122
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], dl
cmp sil, 25
add al, -104 # instrumentation
lea rax, qword ptr [rbx + rcx + 90]
and rcx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rcx]
cmp dl, sil
test dl, al
add al, 96 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
