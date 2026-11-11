.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
setp byte ptr [r14 + rax]
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf eax, ecx
add cl, -41 # instrumentation
adc ax, di
and rdi, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rdi]
and dl, 32
and rsi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], sil
and rdi, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rdi]
xor al, al
jmp .bb_0.1
.bb_0.1:
test dl, 84
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], rbx
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rdi
and rcx, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], -28668
sbb rbx, -117
and rsi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rsi], 21
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
