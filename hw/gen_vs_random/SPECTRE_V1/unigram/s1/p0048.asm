.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -47
xchg eax, ecx
and rsi, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rsi]
movzx ax, dil
and rdx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdx], edx
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], edx
add dl, -24 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rbx]
cmovnb rax, rsi
and bl, 87
imul ebx, edx
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
add al, 13 # instrumentation
cmovno rdx, rax
and rdx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rax], 98
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
