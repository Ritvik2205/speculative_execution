.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rdx]
lea rsi, qword ptr [rdx + rsi + 99]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsr di, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], bx
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], bl
sub rax, -2089384489
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 31
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rbx]
or cx, 32
and rbx, 0b1111111111111 # instrumentation
and esi, dword ptr [r14 + rbx]
xor rdx, rbx
lea esi, qword ptr [rax + rbx + 80]
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 7
and rbx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
