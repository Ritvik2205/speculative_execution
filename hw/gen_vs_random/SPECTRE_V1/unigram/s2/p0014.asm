.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sets sil
and rax, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], edx
sets dil
or al, 26
jle .bb_0.1
jmp .exit_0
.bb_0.1:
xor dl, 13
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], rax
add cl, -123 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rbx]
bt ax, 16
dec rdx
cmovo esi, ebx
lea ecx, qword ptr [rdx + rax + 66]
add cl, 97 # instrumentation
adc di, cx
and rax, 0b1111111111111 # instrumentation
movzx rax, byte ptr [r14 + rax]
cmp sil, dl
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], 27
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
