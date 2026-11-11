.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setnb sil
and rax, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rax], bx
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 15
and rdi, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rdi]
setle sil
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], al
add al, -104 # instrumentation
and rax, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rax]
test rsi, rax
and rsi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rsi], ax
or dl, dl
add cl, 121 # instrumentation
cmovs edx, edx
and rbx, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rbx]
xor dil, bl
btc dx, 94
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 80
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
