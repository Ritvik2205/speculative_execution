.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and edx, edi
add cx, 59
add cl, 121 # instrumentation
cmovs ecx, ecx
and rdx, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdx], 52
add sil, 34 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], 100
setnbe cl
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
add cl, -23 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rbx]
lea rbx, qword ptr [rcx + rsi + 63]
mov rsi, 49
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rax]
add dl, bl
imul rbx, rbx, 25
dec dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
