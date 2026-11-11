.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -32 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], bx
and rcx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], ax
and rcx, -102
and rcx, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rcx]
movzx di, dl
setnz bl
cmp dil, cl
or dx, 1 # instrumentation
add cl, -75 # instrumentation
sbb bx, cx
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -119
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 23
add al, -117 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rax]
not ecx
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], 7
xor bx, si
cmovnle eax, esi
adc sil, 5
and rsi, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rbx]
sbb ebx, ecx
and al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
