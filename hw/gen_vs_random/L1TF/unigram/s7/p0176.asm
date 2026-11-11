.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr esi, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rsi]
xchg rcx, rdi
cmovnbe rbx, rdx
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
xor sil, bl
mov bl, bl
cmovnle ecx, edx
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rcx], rdx
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], rcx
and rcx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rcx]
lea ebx, qword ptr [rax + rbx + 93]
lea rcx, qword ptr [rcx + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rdi]
add al, -110 # instrumentation
btr ax, 27
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
