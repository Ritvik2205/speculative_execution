.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], ebx
and rbx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rbx], 20
adc dl, -12
and rdx, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 1 # instrumentation
and rbx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], edi
cmovnbe rcx, rax
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
not word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
cmovnz rcx, rax
and rax, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rax]
and dil, dl
and rsi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rsi]
cmp dx, 97
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
