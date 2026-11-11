.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], bx
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dl
mov rdx, -1012904117298842753
and rax, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rax], edi
setle dl
add al, 31
xor rax, rax
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 62
neg di
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], eax
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdi
and rbx, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rbx]
sub cl, sil
and rbx, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
