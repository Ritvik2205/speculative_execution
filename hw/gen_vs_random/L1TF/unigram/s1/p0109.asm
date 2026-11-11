.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea eax, qword ptr [rax + rbx]
or esi, edi
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], si
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], al
and rdx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 32339
sbb rbx, -117
cmovno rax, rcx
and cl, 61
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], cl
or ax, 0b1000000000000000 # instrumentation
bsf dx, ax
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], 354197880
and rcx, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rsi
or al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
