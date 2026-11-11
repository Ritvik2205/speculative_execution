.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 36 # instrumentation
setnl dl
cmovo ecx, ecx
cwde
cmovb di, di
and rbx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rbx], 5
dec rax
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
add sil, 41 # instrumentation
and rsi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rsi], edi
add al, -94 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 37
and rdx, 0b1111111111111 # instrumentation
movzx ebx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], 5
and rcx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rcx]
mov rdx, rax
mul cl
mov ax, di
and rdx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rdx], dx
add cl, 29 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], 6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
