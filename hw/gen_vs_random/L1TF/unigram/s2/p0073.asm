.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], rdx
imul ecx, ebx, 17
and rdi, 0b1111111111111 # instrumentation
sbb rbx, qword ptr [r14 + rdi]
add al, 6 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rcx]
and al, al
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], 86
test rax, rdx
and rdi, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rdi]
dec dx
sets sil
and rsi, 0b1111111111111 # instrumentation
setp byte ptr [r14 + rsi]
lea rbx, qword ptr [rbx]
inc edx
add bl, -52 # instrumentation
and rdx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
