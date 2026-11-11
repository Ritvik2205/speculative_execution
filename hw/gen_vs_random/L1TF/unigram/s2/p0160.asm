.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rbx]
lea eax, qword ptr [rcx + rsi]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], 44
and dil, 84
and rbx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], 26
and sil, dl
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], 4
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], 99
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rsi]
lea di, qword ptr [rdi + rdi + 8878]
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], bl
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rdi]
xor dil, 2
and dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
