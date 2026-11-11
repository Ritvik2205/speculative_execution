.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rdi]
or rcx, -10
and rsi, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rsi]
add sil, -111
and rdx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], 99
and rdi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], di
jmp .bb_0.1
.bb_0.1:
mov cl, al
and rbx, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], bx
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 4
cmovbe esi, eax
and rbx, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rbx]
cmovl cx, si
cmovo rax, rcx
and rdi, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rdi]
adc ecx, 17
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
