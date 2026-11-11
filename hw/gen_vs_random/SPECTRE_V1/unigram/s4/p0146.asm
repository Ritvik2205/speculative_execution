.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, 33
or al, bl
and rsi, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rbx], 48
lea ecx, qword ptr [rax + rdx]
cmovle edx, ebx
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
add dl, 21 # instrumentation
adc dx, 41
add dl, -121 # instrumentation
setno dl
jb .bb_0.1
jmp .exit_0
.bb_0.1:
bswap ecx
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], ax
cwd
and rax, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rax]
add dil, 105 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
