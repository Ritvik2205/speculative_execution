.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
neg ecx
sbb dl, dl
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
not al
and rcx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rcx], -105
cmovnz edi, eax
lea di, qword ptr [rsi]
bt ebx, 76
and rdx, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rax]
movsx ax, al
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], 52
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
