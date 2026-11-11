.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dx, 34
and rcx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], dx
cmovl dx, ax
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 52
add al, 65 # instrumentation
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], al
bts ebx, 96
mov dl, sil
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], -33
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], 83
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], di
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
cmovs eax, eax
and rbx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rbx]
btr ecx, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
