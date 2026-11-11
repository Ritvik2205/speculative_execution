.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnb ebx, eax
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], -124
and di, dx
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], eax
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], -60
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], 123
bt rcx, 25
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], sil
btr cx, si
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 50
and rdi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdi], 47
cmovl edx, eax
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
test sil, sil
and rbx, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rbx]
and dl, 17 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
