.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx rdi, ax
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 0
cmovl edi, ebx
cmovnbe rax, rsi
add bl, 39 # instrumentation
cmovo edx, edi
add dl, 34 # instrumentation
add al, -28 # instrumentation
and rcx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btr qword ptr [r14 + rcx], rax
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], 57
bswap rax
jp .bb_0.1
jmp .exit_0
.bb_0.1:
lea ax, qword ptr [rsi + rax]
and rax, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rbx]
add al, -109
movsx ecx, cl
lea ax, qword ptr [rsi + rdi]
test sil, al
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
