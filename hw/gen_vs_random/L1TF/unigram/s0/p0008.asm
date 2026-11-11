.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], al
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rdx
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], 122
and rbx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rbx]
sub rdi, 68
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], 80
and rdx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rdx], 54
and rax, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
add dx, word ptr [r14 + rdx]
cmovo rbx, rsi
and rsi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rsi], rax
and rax, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], 900640967
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
