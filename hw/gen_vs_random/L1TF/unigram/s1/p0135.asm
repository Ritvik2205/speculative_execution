.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, rdx
and rsi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rsi]
imul rbx, rbx, 41
add al, al
add cl, 121 # instrumentation
cmovs esi, esi
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
add cl, -23 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rdx]
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr edx, edi
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rax]
or al, bl
and rsi, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rsi]
btr dx, ax
add cl, -93 # instrumentation
xchg rdi, rcx
add edx, ebx
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], ecx
test rdx, 63
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
