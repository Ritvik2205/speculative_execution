.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub al, 28 
lfence
sub al, 88 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
xor rdx, qword ptr [r14 + rax] 
lfence
and rcx, 0b1111111111000 # instrumentation
lfence
lock and byte ptr [r14 + rcx], bl 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
test byte ptr [r14 + rdx], 103 
lfence
add bx, 85 
lfence
jmp .bb_0.1 
.bb_0.1:
mov rax, -6437636498926413678 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
xor dword ptr [r14 + rax], edi 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
cmovnz esi, dword ptr [r14 + rbx] 
lfence
xor bl, dl 
lfence
sbb bl, -62 
lfence
btc di, 237 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
and word ptr [r14 + rbx], 97 
lfence
bts eax, edi 
lfence
and rcx, 0b1111111111000 # instrumentation
lfence
lock and byte ptr [r14 + rcx], 3 
lfence
or cl, 1 # instrumentation
lfence
mov ax, 1 # instrumentation
lfence
div cl 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
