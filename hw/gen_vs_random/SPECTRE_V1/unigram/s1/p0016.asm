.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setnz al
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
movzx edi, byte ptr [r14 + rcx]
cmovs rsi, rsi
neg di
and rcx, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rcx]
imul al
cmovb bx, si
and rbx, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rbx]
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rax], rdx
xor rdx, rcx
and rsi, 0b1111111111111 # instrumentation
adc cx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rbx]
sub ebx, 75
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], 12
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
