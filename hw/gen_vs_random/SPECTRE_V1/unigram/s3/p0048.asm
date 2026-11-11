.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rcx, qword ptr [rbx]
cmovnp ax, si
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], bl
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rbx], 5
lea edi, qword ptr [rdi]
and rdx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rdx]
cmovno cx, dx
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], cl
add al, 120 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rbx]
add cl, 43 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], dl
and rax, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rax]
xor cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
