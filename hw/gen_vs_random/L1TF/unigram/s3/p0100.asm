.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr eax, 55
add cl, 61 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rbx]
and esi, 45
and rbx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], sil
xor bl, dil
neg rsi
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], cl
cmovno si, si
and rbx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rbx]
cmovs rcx, rdx
and rcx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], 74
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], cl
lea edi, qword ptr [rdx]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
