.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rcx]
setle dil
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], dl
and rsi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rsi], ebx
inc sil
and rdx, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], sil
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 82
sbb cl, dil
lea ax, qword ptr [rax + rcx + 39]
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
and rcx, 25
setnb cl
setl dl
imul ecx
and rax, 0b1111111111111 # instrumentation
movzx ecx, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
