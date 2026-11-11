.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf edi, dword ptr [r14 + rdx]
add bl, -79 # instrumentation
cmovo ax, di
add dil, 55 # instrumentation
lea edi, qword ptr [rax + rbx + 55]
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], sil
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], sil
and rdx, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rdx], edi
and rbx, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rbx]
sub dl, -49
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], ax
test dil, -126
lea edx, qword ptr [rbx + rcx]
cmovp eax, esi
lea rsi, qword ptr [rcx + rsi]
add dl, -5 # instrumentation
adc cl, dl
cmovno ebx, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
