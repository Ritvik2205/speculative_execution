.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setp bl
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rcx]
add bl, 37 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], 89
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dl
and rbx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rbx], 12
and rdx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
cmp bl, cl
add al, 115 # instrumentation
lea edx, qword ptr [rdx + rax]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dl
and rdx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], al
add dl, 97 # instrumentation
cmovnbe edx, ecx
and rbx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
