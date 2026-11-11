.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], al
add bl, -113 # instrumentation
and rsi, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rdx]
or cl, 105
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], 91
lea edi, qword ptr [rdi + rcx + 47]
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rcx
jmp .bb_0.1
.bb_0.1:
add al, -104 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], 125
add al, -117 # instrumentation
setp dl
and rbx, 0b1111111111111 # instrumentation
movsx rsi, byte ptr [r14 + rbx]
add dl, -17 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
