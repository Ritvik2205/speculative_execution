.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], dl
and rax, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], ebx
xor rdi, -80
and rdx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rdx]
test bl, bl
and dl, dl
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], rdx
neg bl
and rax, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
add ecx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], bx
btr esi, 37
lea eax, qword ptr [rdx + rax + 51706]
sbb bl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
