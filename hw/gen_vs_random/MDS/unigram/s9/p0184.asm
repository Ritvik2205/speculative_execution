.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rcx]
bts dx, 50
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], di
cmovns ax, si
and rdi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], ax
or si, -12
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 56
test eax, edx
cmovno rbx, rbx
not rsi
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], sil
or si, 0b1000000000000000 # instrumentation
bsr cx, si
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
and rbx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btr word ptr [r14 + rbx], si
or dx, 125
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], cx
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], eax
and rsi, 0b1111111111111 # instrumentation
not word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
