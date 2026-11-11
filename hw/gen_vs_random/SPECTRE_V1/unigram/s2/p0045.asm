.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 5
cmovle ecx, edi
and rcx, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rcx], 85
cmp bl, sil
and rsi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rsi], 56
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], dl
setno dil
and rdx, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rdx]
lea rcx, qword ptr [rdx + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rdi]
or eax, -1161451853
add cl, 112 # instrumentation
movzx edx, bl
and rax, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -1921229398
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
