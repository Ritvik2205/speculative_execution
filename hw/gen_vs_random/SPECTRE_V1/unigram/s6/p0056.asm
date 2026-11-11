.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rsi, qword ptr [r14 + rdi]
add dil, 89 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], di
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], dil
setp sil
adc sil, -77
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf esi, dword ptr [r14 + rax]
lea ax, qword ptr [rbx + rcx]
add bl, -9 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rbx]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dl
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], dl
and rdi, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rdi]
sbb dl, dl
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], al
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], edi
cmovbe cx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
