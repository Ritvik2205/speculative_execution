.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 37 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], 100
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
mov dl, 89
or cx, 19
and rax, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rdx]
and ax, 37
mul rcx
test cx, 11
setbe sil
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rax
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf eax, dword ptr [r14 + rcx]
imul ecx, ebx
setno dil
adc cl, -34
add dl, -121 # instrumentation
movsx ax, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
