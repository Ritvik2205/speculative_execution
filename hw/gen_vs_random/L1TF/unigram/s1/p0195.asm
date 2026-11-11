.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnp esi, edi
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], 70
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], eax
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], di
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], 1908434016
imul ax, cx, 83
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], dl
lea rax, qword ptr [rcx]
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rax
setnle al
and rbx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rbx]
cmp esi, 87
lea rbx, qword ptr [rcx + rax]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rdx]
cmp dil, 3
and rsi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rsi], ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
