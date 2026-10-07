.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
lfence
or al, byte ptr [r14 + rbx] 
and rcx, 0b1111111111111 # instrumentation
lfence
sub edx, dword ptr [r14 + rcx] 
xor cl, dl 
test eax, -385619864 
or dl, dl 
and rdx, 0b1111111111000 # instrumentation
lfence
xchg byte ptr [r14 + rdx], dil 
cmovno esi, esi 
and rdi, 0b1111111111111 # instrumentation
lfence
cmovle edx, dword ptr [r14 + rdi] 
cmovnz ebx, ecx 
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], dl 
and rsi, 0b1111111111111 # instrumentation
lfence
setnle byte ptr [r14 + rsi] 
add rax, -1969014465 
and rax, 0b1111111111111 # instrumentation
lfence
setns byte ptr [r14 + rax] 
and rdi, 0b1111111111111 # instrumentation
lfence
or rdi, qword ptr [r14 + rdi] 
and rbx, 0b1111111111000 # instrumentation
lfence
lock xor dword ptr [r14 + rbx], -14 
xor eax, -117 
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
